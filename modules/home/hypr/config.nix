{ username, host, lib, config, pkgs, ... }:
{
  wayland.windowManager = {
    hyprland = {
      enable = true;

      settings = {

        exec-once = [
          "waybar &"
          "hyprctl setcursor Bibata-Modern-Ice 24"
        ];

        input = {
          kb_layout = "us";
          follow_mouse = 1;
          sensitivity = 0;
        };

        general = {
          "$mainMod" = "SUPER";

          gaps_in = 5;
          gaps_out = 24;
          border_size = 3;
          "col.active_border" = "rgba(ceaa7aff)";
          "col.inactive_border" = "rgba(595959AA)";

          border_part_of_window = false;
          no_border_on_floating = false;

          layout = "dwindle";
        };

        decoration = {
        # See https://wiki.hyprland.org/Configuring/Variables/ for more

          rounding = 0;
            blur = {
              enabled = true;
              size = 2;
              passes = 2;
              new_optimizations = true;
            };

          drop_shadow = true;
          shadow_range = 16;
          shadow_render_power = 6;
          "col.shadow" = "rgba(000000ee)";
        };

        animations = {
          enabled = false;


          # should redo these some time
          bezier = [
            "myBezier, 0.05, 0.9, 0.1, 1.05"
            "workspacesBezier, 0.65, 0.09, 0.22, .83"
          ];


          animation = [
            "windows, 1, 7, myBezier"
            "windowsOut, 1, 7, default, popin 80%"
            "border, 1, 10, default"
            "fade, 1, 7, default"
            "workspaces, 1, 3, workspacesBezier"
          ];
        };

        bind = [
          # window navigation
          "$mainMod, H, movefocus, l"
          "$mainMod, J, movefocus, d"
          "$mainMod, K, movefocus, u"
          "$mainMod, L, movefocus, r"

          "$mainMod, C, killactive"
          "$mainMod, TAB, fullscreen, 0"
          "$mainMod, T, togglefloating"
          "$mainMod, O, togglesplit"
          "$mainMod, I, pseudo"

          "$mainMod, RETURN, exec, kitty"
          "$mainMod, B, exec, firefox"
          "$mainMod, G, exec, tofi-drun --drun-launch=true --config=/home/${username}/.config/tofi/config"
          "$mainMod, V, exec, bemenu-run"

          "$mainMod SHIFT, Q, exec, hyprctl dispatch exit"

          "$mainMod, A, workspace, 1"
          "$mainMod, S, workspace, 2"
          "$mainMod, D, workspace, 3"
          "$mainMod, F, workspace, 4"
          "$mainMod, 1, workspace, 5"
          "$mainMod, 2, workspace, 6"
          "$mainMod, 3, workspace, 7"
          "$mainMod, 4, workspace, 8"

          "$mainMod SHIFT, A, movetoworkspace, 1"
          "$mainMod SHIFT, S, movetoworkspace, 2"
          "$mainMod SHIFT, D, movetoworkspace, 3"
          "$mainMod SHIFT, F, movetoworkspace, 4"
          "$mainMod SHIFT, 1, movetoworkspace, 5"
          "$mainMod SHIFT, 2, movetoworkspace, 6"
          "$mainMod SHIFT, 3, movetoworkspace, 7"
          "$mainMod SHIFT, 4, movetoworkspace, 8"

          "$mainMod CTRL, H, resizeactive, -65 0"
          "$mainMod CTRL, J, resizeactive, 0 -65"
          "$mainMod CTRL, K, resizeactive, 0 65"
          "$mainMod CTRL, L, resizeactive, 65 0"

          "$mainMod SHIFT, H, movewindow, l"
          "$mainMod SHIFT, J, movewindow, d"
          "$mainMod SHIFT, K, movewindow, u"
          "$mainMod SHIFT, L, movewindow, r"

          # Scroll through existing workspaces with mainMod + scroll
          "$mainMod, mouse_down, workspace, e+1"
          "$mainMod, mouse_up, workspace, e-1"

          # screnshots
          ", PRINT, exec, hyprshot -m output -o ~/Pictures/screenshots"
          "SHIFT, PRINT, exec, hyprshot -m region -o ~/Pictures/screenshots"
          "$mainMod SHIFT, PRINT, exec, hyprshot -m active -o ~/Pictures/screenshots"


          # Change screen brightness
          "$mainMod, 9,  exec, brillo -U 10"
          "$mainMod, 0,  exec, brillo -A 10"
        ]; 

        bindm = [
          # Move/resize windows with mainMod + LMB/RMB and dragging
          "bindm = $mainMod, mouse:272, movewindow"
          "bindm = $mainMod, mouse:273, resizewindow"
        ];
      }; # settings

      extraConfig = if (host == "shortstop") 
      then"
        monitor=,highrr,auto,1
        monitor=HDMI-A-2, 1920x1080@144, -1080x-139, 1, transform, 1
        monitor=HDMI-A-1, 2560x1440@144, 0x0, 1

        xwayland {
          force_zero_scaling = true
        }
      "        
      else"
        monitor=eDP-1, 1920x1080@60, 0x0, 1
        monitor=, preferred, 0x-1440, 1
        monitor=DP-4, 2560x1440@60, 0x1440, 1
        monitor=DP-5, disable
        xwayland {
          force_zero_scaling = true
        }
      ";
    };
  };
}
