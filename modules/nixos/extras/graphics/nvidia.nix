{
    boot.kernelParams = [ "nvidia.NVreg_UsePageAttributeTable=1" ];
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.graphics = {
        enable = true;
        enable32Bit = true;
    };
    hardware.nvidia = {
        open = true;
        modesetting.enable = true;
        powerManagement.enable = true;
    };
}
