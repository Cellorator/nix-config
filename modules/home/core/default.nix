{ pkgs, config, username, ... }:
let
    utils = import ./utils.nix { inherit config username; };
in {
    _module.args = { inherit utils; };

    imports = [
        ./cli
    ];

    home.packages = with pkgs; [
        rofi
        alttab
        picom
    ];

    home.file = utils.linkToHome (utils.prepend ".config/" [
        "nvim"

        "awesome"
        "qtile"
        "rofi"
        "picom"
    ]);

    programs.git = {
        enable = true;
        lfs.enable = true;
        userName = "Cellorator";
        userEmail = "66387348+Cellorator@users.noreply.github.com";
    };
}
