let
    hyprland = wayland.windowManager.hyprland
in {
    hyprland.enable = true;
    hyprland.settings = {
        generarl
        "$mod" = "SUPER";
    };
}
