{ ... }:
{
  imports = [ (import ./bar-waybar.nix) ]
         ++ [ (import ./settings.nix) ]
         ++ [ (import ./style.nix) ];
}
