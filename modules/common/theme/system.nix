{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        (papirus-icon-theme.override { color = "#8ba4b0"; })
    ];
}
