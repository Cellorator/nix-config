{ pkgs, ... }:
{
    imports = [
        ./hyprland.nix

        ./kitty.nix
        ./wezterm.nix

        ./wine.nix
        ./pro-audio.nix

        ./gaming
    ];

    home.packages = with pkgs; [
        clang
        rustup
        gnumake

        firefox
        fastfetch
        lxappearance
    ];
}
