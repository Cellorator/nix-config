{ pkgs, ... }:
{
    imports = [
        ./hyprland.nix

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
