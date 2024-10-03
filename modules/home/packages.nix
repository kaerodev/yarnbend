{ config, pkgs, ... }:
let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-full
      lipsum
      apa7
      dvisvgm dvipng # for preview and export as html
      wrapfig amsmath ulem hyperref capt-of;
      #(setq org-latex-compiler "lualatex")
      #(setq org-preview-latex-default-process 'dvisvgm)
  });
in
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
    unrar
    gnumake
    tex
    tectonic

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

