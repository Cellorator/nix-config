{
    programs.nh = {
        enable = true;
        clean.enable = true;
        clean.extraArgs = "--keep-since 30d";
        flake = "/home/admin/nix-config";
    };
}
