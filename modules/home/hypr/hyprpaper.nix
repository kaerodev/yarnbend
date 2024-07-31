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
      ];

    };
  };
}
