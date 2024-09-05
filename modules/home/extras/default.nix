{ pkgs, ... }:
{
    imports = [
        ./desktop
        ./gaming
        ./dev

        ./pro-audio.nix
        ./wine.nix
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
