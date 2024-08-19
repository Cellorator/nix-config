{ lib
, stdenv
, fetchgit
, gettext
, color ? "#8ba4b0"
}:

stdenv.mkDerivation rec {
    name = "kanagawa-dragon-icon-theme";

    src = fetchgit {
        # owner = "themix-project";
        # repo = "themix-gui";
        # rev = "1.15.1";
        url = "https://github.com/themix-project/themix-gui.git";
        sparseCheckout = [
            "plugins/icons_papirus"
        ];
        hash = "sha256-tHeAEW9F/vOi5dre90mlxD1IskIulwdrkZ/QFonw2+o=";
        fetchSubmodules = true;
    };

    buildInputs = [
        gettext
    ];

    buildPhase = ''
        cd plugins/icons_papirus
        ls | grep change_color.sh | xargs -i bash {} -o KanagawaDragonIcons -c "${color}" -d KanagawaDragonIcons
    '';

    installPhase = ''
        mkdir -p "$out/share/icons"
        mv KanagawaDragonIcons "$out/share/icons"
    '';
}
