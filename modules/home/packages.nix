{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = (with pkgs; [
    kitty
    zed-editor
    pcmanfm
    pavucontrol
    xarchiver
    firefox
    libreoffice
    syncthing
    obs-studio
    rawtherapee
    obsidian
    blender
    vesktop
    brillo
    tauon

    eza
    fzf

    unscii

    libgcc
    gcc
    rustup
  ]);
}

