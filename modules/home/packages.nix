{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = (with pkgs; [
    # random apps
    kitty
    xarchiver
    syncthing
    pavucontrol
    nomacs
    zathura
    mpv
    inkscape
    networkmanagerapplet
    godot_4
    prismlauncher
    openmw
    vscode
    zotero
    unrar
    gnumake
    texlive.combined.scheme-full
    latexrun
    clifm
    kickoff
    lf
    trashy
    cmus

    cataclysm-dda-git
    fuse

    obsidian
    firefox
    libreoffice
    obs-studio
    rawtherapee
    audacity
    mangohud

    spotify
    vesktop

    desktop-file-utils
    usbutils
    xdg-desktop-portal-hyprland
    openssl
    python312Packages.pip
    python312Packages.tkinter
    wineWowPackages.stable

    # Screenshots
    grim
    slurp
    jq
    wl-clipboard
    libnotify
    mako
    hyprshot

    alsa-lib

    eza
    fzf

    unscii # font

    mono
    libgcc
    gcc
    rustup
    python3Full
    lldb
    ripgrep
  ]);
  
}

