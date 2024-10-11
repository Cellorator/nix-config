{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs
        sqlite

        texliveMedium
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
