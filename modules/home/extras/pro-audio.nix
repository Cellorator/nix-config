{ pkgs-stable, pkgs, ... }:
{
    home.packages = with pkgs; [
        ardour
        reaper
        yabridge
        yabridgectl

        vital
        surge
    ] ++ [
        pkgs-stable.distrho
    ];
}
