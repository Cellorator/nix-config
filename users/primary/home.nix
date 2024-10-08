{ pkgs, username, utils, ... }:

{
    imports = [
        ../../modules/home/core
        ../../modules/home/extras
        ../../modules/common/theme/user.nix
    ];

    nix = {
        package = pkgs.nix;
        settings.experimental-features = [ "nix-command" "flakes" ];
    };

	home = {
        inherit username;
		homeDirectory = "/home/${username}";

		# If reading in the future, don't change this
		stateVersion = "24.05";

		preferXdgDirectories = true;

        file = utils.linkToHome [
            "Pictures/backgrounds"
            "bin"
        ];
	};

	programs = {
		home-manager.enable = true;
	};
}
