{ ... }:
{
  imports = [ (import ./wm.nix) ]
    ++ [ (import ./hyprpaper.nix) ]
    ++ [ (import ./config.nix) ];
}
