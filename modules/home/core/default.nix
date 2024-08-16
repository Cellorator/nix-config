{ pkgs, config, username, ... }:
let
    utils = import ./utils.nix { inherit config username; };
in {
    _module.args = { inherit utils; };

    home.packages = with pkgs; [
        wezterm
        fish
        starship
        pfetch
        bat
        zoxide
        eza
        fzf
        neovim
        xclip

        rofi
        alttab
        picom
    ];

    home.file = utils.linkToHome (utils.prepend ".config/" [
        "wezterm"
        "fish"
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
