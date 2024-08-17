let
    hyprland = wayland.windowManager.hyprland;
in {
    hyprland.enable = true;
    hyprland.settings.general = {
        "$mod" = "SUPER";
    };
}
