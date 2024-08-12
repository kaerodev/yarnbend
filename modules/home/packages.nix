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
    mpv

    obsidian
    firefox
    libreoffice
    obs-studio
    rawtherapee

    spotify
    tauon
    vesktop

    brillo
    usbutils
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

