{ pkgs, ... }:
{
    stylix = {
        enable = true;
        image = /home/admin/Pictures/backgrounds/blue-black-hole_3840x2160.png;
        polarity = "dark";
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

    stylix.cursor = {
        package = pkgs.simp1e-cursors;
        name = "Simp1e";
        size = 16;
    };
}
