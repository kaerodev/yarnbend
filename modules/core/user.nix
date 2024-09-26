{pkgs, lib, config, username, host, inputs, ... }:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  hardware.brillo.enable = true;

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {inherit inputs username host; };

    users.${username} = {

      imports = if (host == "shortstop") 
      then [ ./../home/desktop.default.nix]
      else [./../home];

      home.username = "${username}";
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "24.05";
      programs.home-manager.enable = true;
      /*
      activation = {
        # https://github.com/philj56/tofi/issues/115#issuecomment-1701748297
        regenerateTofiCache = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
          tofi_cache=${config.xdg.cacheHome}/tofi-drun
          [[ -f "$tofi_cache" ]] && rm "$tofi_cache"
          '';
      };
      */
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    initialPassword = "password";
    description = "user ${username}";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
  nix.settings.allowed-users = [ "${username}" ];
}
