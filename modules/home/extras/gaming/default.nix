{ pkgs, ... }:
{
    imports = [ ./mangohud.nix ];
    home.packages = with pkgs; [
        lutris
        prismlauncher
    ];
}

