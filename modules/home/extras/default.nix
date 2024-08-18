{ pkgs, ... }:
{
    imports = [
        ./hyprland.nix

        ./kitty.nix
        ./wezterm.nix

        ./theme
        ./wine.nix
        ./pro-audio.nix
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
