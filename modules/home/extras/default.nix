{ pkgs, ... }:
{
    imports = [
        ./hyprland.nix

        ./theme
        ./gtk-theme.nix
        ./wine.nix
        ./pro-audio.nix
    ];

    home.packages = with pkgs; [
        clang
        rustup
        gnumake

        firefox
    ];
}
