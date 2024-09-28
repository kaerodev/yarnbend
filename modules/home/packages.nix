{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = (with pkgs; [
    kitty
    xarchiver
    pcmanfm
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
    zed-editor
    cataclysm-dda-git

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

