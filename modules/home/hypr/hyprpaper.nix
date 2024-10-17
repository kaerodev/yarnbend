{ ... }:
{
  services.hyprpaper = {
    enable = true;


    settings = {
      splash = false;
      ipc = "on";
      
      preload = ["~/.dotfiles/wallpaper/aurora.webp"];
      wallpaper = [
        "eDP-1,~/.dotfiles/wallpaper/aurora.webp"
        "HDMI-A-2,~/.dotfiles/wallpaper/aurora.webp"
        "DP-3,~/.dotfiles/wallpaper/aurora.webp"
        "DP-2,~/.dotfiles/wallpaper/aurora.webp"
        ",~/.dotfiles/wallpaper/aurora.webp"
      ];

    };
  };
}
