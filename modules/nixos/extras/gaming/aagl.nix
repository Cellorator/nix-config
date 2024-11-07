{ aagl, ... }:
{
    imports = [ aagl.nixosModules.default ];
    nix.settings = aagl.nixConfig;
    programs.anime-game-launcher.enable = true;
    programs.sleepy-launcher.enable = true;
}
