{ pkgs, config, lib, ... }:
# cool change
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
        theme = "where_is_my_sddm_theme_qt5";
    };

    environment.systemPackages = with pkgs; [
        (where-is-my-sddm-theme.override {
            variants = [ "qt5" ];
            inherit themeConfig;
        })
    ];
}
