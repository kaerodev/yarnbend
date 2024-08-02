{ pkgs, lib, host, ... }:
{
  # I don't want steam on the laptop
  config = if (host == "winger") then {

    home.packages = (with pkgs; [
      osu-lazer
    ]);

    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = false;
    };

    programs.gamemode.enable = true;
    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-runtime"
    ];
  }
  else
    {};
}
