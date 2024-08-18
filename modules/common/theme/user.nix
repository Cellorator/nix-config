{ stylix, utils, ... }:
{
    imports = [
        stylix.homeManagerModules.stylix
        ./global.nix
    ];

    home.file = utils.linkToHome (utils.prepend ".local/share/" [
        "themes/KanagawaDragon"
        # "icons/KanagawaDragon"
    ]);

    gtk = {
        enable = true;
        iconTheme.name = "KanagawaDragon";
    };
}
