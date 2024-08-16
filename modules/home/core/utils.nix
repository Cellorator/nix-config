{ config, username, ... }:
rec {
    linkSource = target: {
        source = config.lib.file.mkOutOfStoreSymlink "/home/${username}/dotfiles/${target}";
    };

    linkToHome = targets: builtins.listToAttrs (
        map (x: { name = x; value = linkSource x; }) targets
    );

    prepend = x: map (item: x + item);
}
