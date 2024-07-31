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

    theme = {
      name = "gruvbox-dark";
      package = pkgs.gruvbox-dark-gtk;
    };

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

/*
    iconTheme = {
      package = pkgs.vimix-icon-theme.override {
        colorVariants = [ "standard" ];
      };
    };
*/
  };
}
