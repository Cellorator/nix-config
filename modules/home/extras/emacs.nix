{ pkgs, utils, ... }:
{
    home.packages = with pkgs; [
        math-preview
        emacs
    ];

    home.file = utils.linkToHome [ ".config/emacs" ];
}
