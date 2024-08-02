{ pkgs, lib, host, ... }:
{
  # I don't want steam on the laptop
  config = if (host == "shortstop") then {

    home.packages = (with pkgs; [
      osu-lazer
    ]);
  }
  else {};
}
