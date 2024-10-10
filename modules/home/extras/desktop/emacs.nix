{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs
        sqlite
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
