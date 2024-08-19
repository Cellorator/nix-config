{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        (callPackage ./builds/kanagawa-dragon-icons.nix {})
    ];
}
