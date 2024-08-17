{ stylix, pkgs, ... }:
{
    imports = [ stylix.homeManagerModules.stylix ];

    stylix = {
        enable = true;
        autoEnable = true;
    };
}
