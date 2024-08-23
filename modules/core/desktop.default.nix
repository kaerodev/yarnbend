{ ... }:
{
  imports = 
    [ (import ./default.nix) ]
  ++[ (import ./../home/steam.nix) ];

  programs.gamemode.enable = true;
}
