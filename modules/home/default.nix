{ ... }:
{
  imports = 
    [ (import ./hypr) ]
  ++[ (import ./xinitrc.nix) ]
  ++[ (import ./desktop.nix) ]
  ++[ (import ./lf.nix) ]
  ++[ (import ./tofi/tofi.nix) ]
  ++[ (import ./bemenu.nix) ]
  ++[ (import ./helix.nix) ]
  ++[ (import ./yazi.nix) ]
  ++[ (import ./settings.nix) ]
  ++[ (import ./packages.nix) ]
  ++[ (import ./nixvim) ]
  ++[ (import ./emacs.nix) ]
  ++[ (import ./bar-waybar) ]
  ++[ (import ./bat.nix) ]            # cat with syntax highlighting and other things UwU
  ++[ (import ./kitty) ]
  ++[ (import ./starship.nix) ]       # prompt customization
  ++[ (import ./browser-firefox.nix) ]
  ++[ (import ./scripts.nix) ]
  ++[ (import ./launcher-wofi.nix) ]
  ++[ (import ./git.nix) ]
  ++[ (import ./gtk.nix) ]
  ++[ (import ./zsh.nix) ]
  ++[ (import ./games.nix) ];
}
