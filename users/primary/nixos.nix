{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.admin = {
        isNormalUser = true;
        extraGroups = [ "networkmanager" "wheel" ];
        description = "Admin";
        # let
        #     first = builtins.substring 0 1;
        #     tail = s: builtins.substring 1 (builtins.stringLength s) s;
        #     capitallize = s: (lib.toUpper (first s)) + tail s;
        # in
        #     capitallize username;
    };
}
