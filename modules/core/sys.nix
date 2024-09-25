{ self, pkgs, lib, inputs, ... }:
{
  nix = {
    settings = {
      auto-optimise-store = true;# optimizes store at every reload
      experimental-features = [ "nix-command" "flakes" ];
    };
    gc = {
      automatic = true;
      dates = "monthly";
      options = "--delete-older-than 45d";
    };
  };

  nixpkgs = {
    config.allowUnfree = true;
    config.permittedInsecurePackages = [
      "freeimage-unstable-2021-11-01"
    ];
  };

  time.timeZone = "America/Vancouver";
  i18n.defaultLocale = "en_CA.UTF-8";
  system.stateVersion = "24.05";

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
  ];

  environment.localBinInPath = true;

  environment.sessionVariables = rec {
    EDITOR = "neovim";
    TEST_VAR = "test";

    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };

  environment.systemPackages = with pkgs; [
    ncurses
    wget
    git
    killall
    htop
    neofetch
    wget
    zip
    unzip
    xdg-utils
    wluma

# vim configuration
      ((vim_configurable.override {  }).customize{
       name = "vim";

# Install plugins for example for syntax highlighting of nix files
       vimrcConfig.packages.myplugins = with pkgs.vimPlugins; {
       start = [ vim-nix vim-lastplace ];
       opt = [];
       };

       vimrcConfig.customRC = ''
       " your custom vimrc

       " visibility
       set relativenumber
       set number
       set cursorline
       set guicursor=n-v-c:block-nCursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

       " search changes
       set hlsearch
       set showmatch
       set incsearch
       set showmode
       set ignorecase
       set smartcase

       set nocompatible
       set backspace=indent,eol,start
       " Turn on syntax highlighting by default
       syntax on
       " make pressing tab insert 2 spaces
       set tabstop=2
       set shiftwidth=2
       set expandtab
       " ...
       '';
      })

  ];

}
