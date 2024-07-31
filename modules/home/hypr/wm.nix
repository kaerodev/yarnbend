{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprland
    wayland
    hyprpicker
    #inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    grim
    slurp
    glib
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
