{ pkgs, ... }:
{
    services.xserver.gdk-pixbuf.modulePackages = [ pkgs.librsvg ];
    environment.systemPackages = with pkgs; [
        (callPackage ./builds/kanagawa-dragon-icons.nix {})
    ];
}
