{ ags, username, ... }:
{
    imports = [ ags.homeManagerModules.default ];

    programs.ags.enable = true;
}
