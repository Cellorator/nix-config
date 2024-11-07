{ aagl, ... }:
{
    imports = [ aagl.nixosModules.default ];
    programs.sleepy-launcher.enable = true;
}
