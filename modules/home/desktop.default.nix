{ pkgs, ... }:
{
  imports =
    [ (import ./default.nix) ];

  home.packages = (with pkgs; [
    kdenlive
    blender
    gimp
    r2modman
    trenchbroom
  ]);
}
