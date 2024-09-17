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
    inkscape
    networkmanagerapplet
    godot_4
    prismlauncher
    openmw

    obsidian
    firefox
    libreoffice
    obs-studio
    rawtherapee
    audacity
    mangohud

    spotify
    vesktop

    brillo
    usbutils
    xdg-desktop-portal-hyprland
    openssl
    python312Packages.pip
    wineWowPackages.stable

    eza
    fzf

    unscii # font

    mono
    libgcc
    gcc
    rustup
    python3
    lldb
    ripgrep
  ]);
  
}

