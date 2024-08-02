{ pkgs, lib, host, ... }:
{
  # I don't want steam on the laptop
  config = if (host == "shortstop") then {
    programs.steam = {
      enable = true;
      package = with pkgs; steam.override { extraPkgs = pkgs: [ attr ]; };# workaround for steam not launching
    };

    programs.gamemode.enable = true;
  }
  else {};
}
