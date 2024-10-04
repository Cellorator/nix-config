{ pkgs, utils, ... }:
{
    # imports = [ wezterm.packages.default ];

    # programs.wezterm.enable = true;
    # programs.wezterm.package = wezterm.packages.x86_64-linux.default;
    # programs.wezterm.theme =

    home.packages = [ pkgs.wezterm ];
    home.file = utils.linkToHome [ ".config/wezterm" ];
}
