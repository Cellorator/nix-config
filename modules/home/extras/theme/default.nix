{ utils, pkgs, ... }:
{
    stylix = {
        enable = true;
        image = /home/admin/Pictures/backgrounds/blue-black-hole_3840x2160.png;
        base16Scheme = ./kanagawa-dragon.yaml;
    };

    stylix.fonts = {
        monospace = {
            package = (pkgs.nerdfonts.override { fonts = [ "Hermit" ]; });
            name = "Hurmit Nerd Font";
        };

        sansSerif = {
            package = pkgs.dm-sans;
            name = "Metropolis";
        };

        sizes.terminal = 12;
    };

    home.file = utils.linkToHome (utils.prepend ".local/share/" [
        "themes/KanagawaDragon"
        "icons/KanagawaDragon"
    ]);

    gtk = {
        enable = true;
        iconTheme.name = "KanagawaDragon";
    };
}
