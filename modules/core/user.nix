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
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    initialPassword = "password";
    description = "user ${username}";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    shell = pkgs.zsh;
  };
  nix.settings = {
    allowed-users = [ "${username}" ];
  };
}
