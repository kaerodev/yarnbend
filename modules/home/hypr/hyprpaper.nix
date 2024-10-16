{ ... }:
{
  services.hyprpaper = {
    enable = true;


    settings = {
      splash = false;
      ipc = "on";
      
      preload = ["~/.dotfiles/wallpaper/yarnbend.png"];
      wallpaper = [
        "eDP-1,~/.dotfiles/wallpaper/yarnbend.png"
        "HDMI-A-2,~/.dotfiles/wallpaper/yarnbend.png"
        "DP-3,~/.dotfiles/wallpaper/yarnbend.png"
        "DP-2,~/.dotfiles/wallpaper/yarnbend.png"
        ",~/.dotfiles/wallpaper/yarnbend.png"
      ];

    };
  };
}
