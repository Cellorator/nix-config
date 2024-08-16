{ pkgs, ... }:
{
    services.displayManager.sddm = {
        enable = true;
        extraPackages = [
            pkgs.where-is-my-sddm-theme
        ];
        theme = "where_is_my_sddm_theme";
    };
}
