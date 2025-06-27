{ pkgs, ... }:
{
  imports =
    [ (import ./default.nix) ];

  home.packages = (with pkgs; [
    libsForQt5.kdenlive
    #blender
    gimp
    r2modman
  ]);
}
