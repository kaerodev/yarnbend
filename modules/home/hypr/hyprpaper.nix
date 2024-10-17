{ ... }:
{
  services.hyprpaper = {
    enable = true;


    settings = {
      splash = false;
      ipc = "on";
      
      preload = ["~/.dotfiles/wallpaper/cyberdream.png"];
      wallpaper = [
        "eDP-1,~/.dotfiles/wallpaper/cyberdream.png"
        "HDMI-A-2,~/.dotfiles/wallpaper/cyberdream.png"
        "DP-3,~/.dotfiles/wallpaper/cyberdream.png"
        "DP-2,~/.dotfiles/wallpaper/cyberdream.png"
        ",~/.dotfiles/wallpaper/cyberdream.png"
      ];

    };
  };
}
