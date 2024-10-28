{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs

        texliveFull
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
