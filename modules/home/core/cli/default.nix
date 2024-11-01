{ pkgs, ... }:
{
    imports = [
        ./fish.nix
        ./nvim.nix
    ];

    home.packages = with pkgs; [
        pfetch
        xclip
        wl-clipboard
        zip
        unzip
    ];

    programs = {
        starship.enable = true;
        bat.enable = true;
        fd.enable = true;
        ripgrep.enable = true;
    };

    programs.eza = {
        enable = true;
        enableFishIntegration = true;
    };

    programs.zoxide = {
        enable = true;
        enableFishIntegration = true;
    };

    programs.fzf = {
        enable = true;
        enableFishIntegration = true;
    };

    programs.git = {
        enable = true;
        lfs.enable = true;
        userName = "Cellorator";
        userEmail = "66387348+Cellorator@users.noreply.github.com";
    };
}
