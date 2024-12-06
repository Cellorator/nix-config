{ pkgs, ... }:
let
    themes = import ./themes.nix;
in
{
    stylix = {
        enable = true;
        image = ./blue-black-hole_3840x2160.png;
        polarity = "dark";
        base16Scheme = themes.kanagawaDragon;
    };

    stylix.fonts = {
        monospace = {
            package = pkgs.nerd-fonts._0xproto;
            name = "0xProto Nerd Font";
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
