{ pkgs, ... }:
{
    config.boot = {
        loader.grub = {
            enable = true;
            efiSupport = true;
            device = "nodev";
        };
        loader.efi.canTouchEfiVariables = true;
        kernelPackages = pkgs.linuxPackages_latest;
    };
}
