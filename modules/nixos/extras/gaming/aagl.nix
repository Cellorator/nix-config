{ aagl, ... }:
{
    imports = [ aagl.nixosModules.default ];
    nix.settings = aagl.nixConfig;
    programs.sleepy-launcher.enable = true;
}
