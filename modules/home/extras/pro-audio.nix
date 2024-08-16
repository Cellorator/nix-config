{ pkgs, ... }:
{
    home.packages = with pkgs; [
        reaper
        yabridge
        yabridgectl
    ];
}
