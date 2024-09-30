{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        emacs
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
