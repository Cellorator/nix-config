{ hyprland, ... }:
{
    imports = [ hyprland.homeManagerModules.default ];

    wayland.windowManager.hyprland.enable = true;
    wayland.windowManager.hyprland.settings = {
        exec-once = [
            "ags run"
            "nm-applet"
            "blueman-applet"
            "emacs --daemon"
        ];

        "$mod" = "SUPER";

        bind = [
            "$mod, R, exec, rofi -show drun"
            "$mod, RETURN, exec, kitty"
            "$mod, E, exec, emacsclient -c"
            "$mod, B, exec, firefox"

            "$mod, J, cyclenext"
            "$mod, K, cyclenext, prev"

            "$mod SHIFT, J, swapnext"
            "$mod SHIFT, K, swapnext, prev"

            "$mod, W, killactive"
            "$mod, F, togglefloating"
            "$mod, M, fullscreen, 1"
            "$mod SHIFT, M, fullscreen, 0"

            "$mod SHIFT, Q, exit"
        ]
        ++ (
        # Workspaces
        # Binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
        builtins.concatLists (builtins.genList (
            x:
            let
                id = toString (x + 1);
            in
            [
                "$mod, ${id}, workspace, ${id}"
                "$mod SHIFT, ${id}, movetoworkspace, ${id}"
            ]) 9)
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

        windowrulev2 = [
            "noinitialfocus,xwayland:1"
            "minsize 250 250, class:^(Unity)$, title:^(Project Settings)$"
            "minsize 250 250, class:^(Unity)$, title:^(Preferences)$"
            "minsize 250 250, class:^(Unity)$, title:^(UnityEditor.*)$"
            # "minsize 250 250, class:^(Unity)$, title:^(UnityEditor.AddComponent.AddComponentWindow)$"
            "minsize 250 250, class:^(Unity)$, title:^(Package Manager)$"
            "minsize 250 250, class:^(Unity)$, title:^(UI Toolkit Debugger)$"
            "minsize 250 500, class:^(Unity)$, title:^(Font Asset Creator)$"
            "minsize 500 250, class:^(Unity)$, title:^(Background Tasks)$"
        ];
    };

    wayland.windowManager.hyprland.settings.general = rec {
        border_size = 0;
        gaps_in = 2;
        gaps_out = gaps_in * 2;

        layout = "master";
    };

    wayland.windowManager.hyprland.settings.decoration = {
        inactive_opacity = 0.85;
    };

    wayland.windowManager.hyprland.settings.input = {
        sensitivity = -0.5;
        kb_options = "ctrl:nocaps"; # Change capslock to ctrl
    };

    # Fixes cursor stuttering
    wayland.windowManager.hyprland.settings.cursor = {
        no_hardware_cursors = true;
    };
}
