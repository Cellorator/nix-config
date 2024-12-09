{ ags, system, username, utils, ... }:
{
    imports = [ ags.homeManagerModules.default ];

    programs.ags = {
        enable = true;
        extraPackages = with ags.packages.${system}; [
            io
            astal3
            battery
            bluetooth
            hyprland
            network
            notifd
            powerprofiles
            tray
        ];
    };

    home.file = utils.linkToHome [
        ".config/ags"
    ];
}
