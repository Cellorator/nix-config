{ pkgs, ... }:
{
    home.packages = with pkgs; [
        rust
        pkgs-config
    ];
}
