{ ... }:
{
  services.hyprpaper = {
    enable = true;


    settings = {
      splash = false;
      ipc = "on";
      
      preload = ["~/.dotfiles/wallpaper/yarnbend-old.png"];
      wallpaper = [
        "eDP-1,~/.dotfiles/wallpaper/yarnbend-old.png"
        "HDMI-A-2,~/.dotfiles/wallpaper/yarnbend-old.png"
        "DP-3,~/.dotfiles/wallpaper/yarnbend-old.png"
        "DP-2,~/.dotfiles/wallpaper/yarnbend-old.png"
        ",~/.dotfiles/wallpaper/yarnbend-old.png"
      ];

    };
  };
}
