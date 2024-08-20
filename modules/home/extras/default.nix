{ pkgs, ... }:
{
    imports = [
        ./hyprland.nix
        ./ags.nix

        ./kitty.nix
        ./wezterm.nix

        ./wine.nix
        ./pro-audio.nix

        ./gaming
        ./dev
    ];

    home.packages = with pkgs; [
        clang
        gnumake

        firefox
        fastfetch
        lxappearance
    ];
}
