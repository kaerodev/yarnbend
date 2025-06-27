{ inputs, nixpkgs, self, username, host, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
        "dotnet-runtime-7.0.20"
        "dotnet-runtime-wrapped-7.0.20"
        "freeimage-unstable-2021-11-01"
        "dotnet-sdk-7.0.410"
    ];
  };

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
    ++ [ (import ./wayland.nix) ]
    ++ [ (import ./qtile) ];
}
