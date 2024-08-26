{ pkgs, ... }:
{
    programs.thunar = {
        enable = true;
        plugins = with pkgs.xfce; [
            thunar-archive-plugin
            thunar-volman
        ];
    };
    programs.xfconf.enable = true;  # For preference changes persisting
    services.gvfs.enable = true;  # Mounting, trash and more
    services.tumbler.enable = true;  # For image thumbnails

    environment.systemPackages = [
        pkgs.xarchiver
    ];
}
