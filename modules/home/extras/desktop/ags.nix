{ ags, username, utils, ... }:
{
    imports = [ ags.homeManagerModules.default ];

    programs.ags = {
        enable = true;
    };

    home.file = utils.linkToHome [
        ".config/ags"
    ];
}
