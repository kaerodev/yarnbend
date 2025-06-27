{ config, pkgs, inputs, system, ... }:
{
  home.packages = (with pkgs; [
    # random apps
    kakoune
    protontricks
    gdb
    valgrind
    keypunch 
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
    xorg.xinit
    anki
    fluent-reader
    popsicle
    cryptsetup
    iosevka
    blender
    tor-browser
    openmw
    lutris
    pcmanfm

    cataclysm-dda-git
    fuse

    openvpn

    obsidian
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

    wayland
    wayland-scanner
    wayland-utils
    wayland-protocols
    wayland-logout
    wayland-proxy-virtwl
    glfw-wayland
    envsubst
    rustup
    swi-prolog
    python3Full
    zig
    ripgrep
  ]);
}

