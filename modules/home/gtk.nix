{ pkgs, config, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
      (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" "FiraCode" ]; })
    pkgs.noto-fonts-emoji
  ];

  gtk = {
    enable = true;

    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "lavender";
      };
    };

    theme = {
      name = "gruvbox-dark";
      package = pkgs.gruvbox-dark-gtk;
    };

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
  };
}
