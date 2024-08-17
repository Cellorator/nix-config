{ pkgs, ... }:
let
    themeConfig.General = {
        passwordInputWidth = 0.1;
        passwordFontSize = 18;

        showSessionsByDefault = true;
        sessionsFontSize = 24;
        showUsersByDefault = true;
        usersFontSize = 24;
    };
in
{
    services.displayManager.sddm = {
        enable = true;
        extraPackages = [
            pkgs.where-is-my-sddm-theme
        ];
        theme = "where_is_my_sddm_theme";
    };
}
