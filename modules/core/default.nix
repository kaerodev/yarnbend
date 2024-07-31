{ inputs, nixpkgs, self, username, host, ... }:
{
  imports = 
       [ (import ./bootloader.nix) ]
    ++ [ (import ./xserver.nix) ]
    ++ [ (import ./networking.nix) ]
    ++ [ (import ./pipewire.nix) ]
    ++ [ (import ./programming.nix) ]
    ++ [ (import ./security.nix) ]
    ++ [ (import ./services.nix) ]
    ++ [ (import ./sys.nix) ]
    ++ [ (import ./user.nix) ]
    ++ [ (import ./wayland.nix) ];
}
