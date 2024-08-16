# Sets gtk theming options
{ config, utils, ... }:
{
    home.file = utils.linkToHome (utils.prepend ".local/share/" [
        "themes/KanagawaDragon"
        "icons/KanagawaDragon"
    ]);

    gtk = {
        enable = true;
        font.name = "Hurmit Nerd Font";
        theme.name = "KanagawaDragon";
        iconTheme.name = "KanagawaDragon";
    };
}
