{ pkgs, username, ... }:
{ 
  services = {
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    fstrim.enable = true;

    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = true;
        AllowUsers = ["${username}"];
        UseDns = true;
        PermitRootLogin = "no";
      };
    };

    syncthing = {
      enable = true;
      dataDir = "/home/${username}";
      configDir = "/home/${username}/.config/syncthing";
      openDefaultPorts = true;
      user = "${username}";
      guiAddress = "0.0.0.0:8384";
    };

    emacs = {
        enable = true;
        package = pkgs.emacs;
    };
  };


  services.logind.extraConfig = ''
    # don't shutdown if the power button is short pressed
    HandlePowerKey = ignore
    '';
}

