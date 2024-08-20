{ pkgs, ... }:
{
    home.packages = [ pkgs.waybar ];

    wayland.windowManager.hyprland.enable = true;

    wayland.windowManager.hyprland.settings = {
        exec-once = [
            "waybar"
        ];

        "$mod" = "SUPER";

        bind = [

            "$mod, R, exec, rofi -show drun"
            "$mod, RETURN, exec, kitty"
            "$mod, B, exec, firefox"

            "$mod, J, cyclenext"
            "$mod, K, cyclenext, prev"

            "$mod SHIFT, J, swapnext"
            "$mod SHIFT, K, swapnext, prev"

            "$mod, W, killactive"
            "$mod, F, togglefloating"

            "$mod SHIFT, Q, exit"
        ]
        ++ (
        # workspaces
        # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
        builtins.concatLists (builtins.genList (
            x: let
                ws = let
                    c = (x + 1) / 10;
                in
                builtins.toString (x + 1 - (c * 10));
            in
            [
                "$mod, ${ws}, workspace, ${toString (x + 1)}"
                "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
            ]) 10)
        );

        binde = [
            "$mod, H, resizeactive, -96 0"
            "$mod, L, resizeactive, 96 0"
        ];
        bindm = [
            "$mod, mouse:272, movewindow"
            "$mod, mouse:273, resizewindow"
        ];

        env = [
            "LIBVA_DRIVER_NAME,nvidia"
            "XDG_SESSION_TYPE,wayland"
            "GBM_BACKEND,nvidia-drm"
            "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        ];
    };

    wayland.windowManager.hyprland.settings.general = {

        gaps_in = 4;
        gaps_out = 8;

        layout = "master";
    };

    wayland.windowManager.hyprland.settings.decoration = {
        inactive_opacity = 0.9;
    };

    wayland.windowManager.hyprland.settings.input = {
        sensitivity = -0.5;
    };
}
