{ pkgs, ... }:
{
    home.packages = with pkgs; [
        reaper
        yabridge
        yabridgectl

        vital
        surge
        distrho
    ];
}
