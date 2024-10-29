{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs29-pgtk
        texliveFull
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
