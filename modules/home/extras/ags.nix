{ ags, username, ... }:
{
    imports = [ ags.homeManagerModules.default ];

    programs.ags = {
        enable = true;
        configDir = "/home/${username}/dotfiles/.config/ags";
    };
}
