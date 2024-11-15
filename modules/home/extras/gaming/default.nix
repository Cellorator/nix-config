{ pkgs, ... }:
let
    myLutrisPkg =
        let
            modifiedPkgs = pkgs.extend (final: prev: {
                buildFHSEnv = args: prev.buildFHSEnv (args // {
                    extraBwrapArgs = (args.extraBwrapArgs or []) ++ [ "--cap-add ALL" ];
            });
        });
    in modifiedPkgs.lutris-unwrapped;
in
{
    imports = [ ./mangohud.nix ];

    home.packages = with pkgs; [
        prismlauncher
        protonup-qt
        bottles
        myLutrisPkg
        dxvk
        vkd3d
    ];
}

