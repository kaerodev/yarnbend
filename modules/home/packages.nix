{ config, pkgs, ... }:
let
  # Create a customized version of logseq
  logseq-patch = pkgs.logseq.override {
    electron_27 = pkgs.electron_34;
  };
in
{
  nixpkgs.config.allowUnfree = true;

  home.packages = (with pkgs; [
    # random apps
    qalculate-gtk
    gimp
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
    vscode
    zotero
    unrar
    p7zip
    gnumake
    texlive.combined.scheme-full
    latexrun
    clifm
    kickoff
    lf
    zellij
    trashy
    cmus
    xorg.xinit
    anki
    fluent-reader

    cataclysm-dda-git
    fuse

    openvpn

    obsidian
    logseq-patch
    glibc
    firefox
    libreoffice
    obs-studio
    rawtherapee
    darktable
    audacity
    mangohud

    spotify
    vesktop

    desktop-file-utils
    usbutils
    xdg-desktop-portal-hyprland
    openssl
    python312Packages.pip
    wineWowPackages.stable

    # Screenshots
    grim
    slurp
    jq
    wl-clipboard
    libnotify
    mako
    hyprshot

    alsa-lib.dev
    alsa-utils

    eza
    fzf

    unscii # font

    mono
    libgcc
    gcc
    lobster

    ghc
    haskell-language-server
    cabal-install
    stack

    zls
    clang-tools

    rustup
    swi-prolog
    python3Full
    zig
    ripgrep
  ]);
}

