{
    imports = [
        ./steam.nix
        ./aagl.nix
    ];

    programs.gamescope = {
        enable = true;
        capSysNice = true;
    };
    programs.gamemode = {
        enable = true;
        enableRenice = true;
    };
}
