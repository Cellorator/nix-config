{ pkgs, ... }:
{
    imports = [
        ./desktop
        ./gaming
        ./dev

        ./pro-audio.nix
        ./wine.nix

        ./syncthing.nix
        ./obsidian.nix
    ];

    home.packages = with pkgs; [
        clang
        gnumake

        fastfetch
        lxappearance

        snixembed
        libnotify
    ];
}
