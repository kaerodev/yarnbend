{ ... }:
{
  imports = 
    [ (import ./hypr) ]
  ++[ (import ./desktop.nix) ]
  ++[ (import ./broot.nix) ]
  ++[ (import ./helix.nix) ]
  ++[ (import ./settings.nix) ]
  ++[ (import ./packages.nix) ]
  ++[ (import ./nixvim) ]
  ++[ (import ./bar-waybar) ]
  ++[ (import ./bat.nix) ]            # cat with syntax highlighting and other things UwU
  ++[ (import ./terminal-kitty.nix) ]
  ++[ (import ./starship.nix) ]       # prompt customization
  ++[ (import ./browser-firefox.nix) ]
  ++[ (import ./scripts.nix) ]
  ++[ (import ./launcher-wofi.nix) ]
  ++[ (import ./git.nix) ]
  ++[ (import ./gtk.nix) ]
  ++[ (import ./zsh.nix) ]
  ++[ (import ./games.nix) ];

}
