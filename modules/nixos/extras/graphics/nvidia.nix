{ pkgs, lib, ... }:
{
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.graphics = {
        enable = true;
        enable32Bit = true;
    };
    hardware.nvidia = {
        open = true;
        modesetting.enable = true;
        powerManagement.enable = true;
        forceFullCompositionPipeline = true;
    };
    boot.kernelParams = [ "nvidia.NVreg_UsePageAttributeTable=1" ];

    programs.tuxclocker = {
        enable = true;
        enabledNVIDIADevices = [ 0 ];
        useUnfree = true;
    };

    environment.systemPackages = with pkgs; [
        gwe
    ];
}
