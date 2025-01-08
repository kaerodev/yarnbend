{ pkgs, lib, host, ... }:
{
  config = if (host == "shortstop") then {

    home.packages = (with pkgs; [
      osu-lazer-bin
    ]);
  }
  else {};
}
