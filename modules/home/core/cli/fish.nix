{
    programs.fish.enable = true;

    programs.fish.shellAliases = {
        ls = "eza -1 --group-directories-first --icons";
        la = "eza -la --group-directories-first --icons";
        tree = "eza -T --group-directories-first --icons";

        bat = "bat -n";
        cat = "bat -n";

        fzf ="fzf --preview \"bat -n --color=always {}\"";
        vif = "fzf --preview \"bat -n --color=always {}\" | xargs nvim";
    };

    programs.fish.shellAbbrs = {
        cd = "z";

        vi = "nvim";

        nho = "nh os switch";
        nhh = "nh home switch";

        mk = "make";

        gi = "git init";
        gs = "git status";
        ga = "git add";
        "ga." = "git add .";
        gc = {
            setCursor = true;
            expansion = "git commit -m  \"%\"";
        };
        gd = "git diff";
        "gd." = "git diff .";
        gl = "git log --oneline";
        gco = "git checkout";
        gr = "git reset";
        gp = "git push";
        gpl = "git pull";
    };

    home.sessionVariables = {
        EDITOR = "nvim";
        PF_INFO = "ascii title os kernel pkgs memory uptime";
    };

    programs.fish.interactiveShellInit = ''
        set fish_greeting # Disable greeting
        echo
        pfetch
    '';
}
