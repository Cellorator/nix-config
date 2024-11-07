{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs29-pgtk
        texliveMedium
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
