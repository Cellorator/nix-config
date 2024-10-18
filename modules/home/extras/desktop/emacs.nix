{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs
        sqlite

        texliveFull
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
