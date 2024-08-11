{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = (with pkgs; [
    kitty
    xarchiver
    zed-editor
    pcmanfm
    syncthing
    pavucontrol
    nomacs

    obsidian
    firefox
    libreoffice
    obs-studio
    kdenlive
    blender
    rawtherapee

    spotify
    tauon
    vesktop

    brillo
    xdg-desktop-portal-hyprland
    openssl

    eza
    fzf

    unscii # font

    libgcc
    gcc
    rustup
  ]);
}

