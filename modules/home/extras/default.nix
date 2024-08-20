{ pkgs, ... }:
{
    imports = [
        ./hyprland.nix
        ./ags.nix

        ./kitty.nix
        ./wezterm.nix

        ./gaming
        ./dev

        ./firefox.nix

        ./wine.nix
        ./pro-audio.nix
    ];

    home.packages = with pkgs; [
        clang
        gnumake

        fastfetch
        lxappearance
    ];
}
