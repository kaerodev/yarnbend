{ ... }:
{
  programs.waybar.settings.mainBar = {
    position = "top";
    layer = "top";
    height = 30;
    width = 1280;
    margin-bottom = 0;
    margin-top = 20;
    reload-style-on-change = true;

    output = [
        "TURNED OFF FOR NOW"
    ];

    modules-left = [
      "cpu"
        "memory"
        "network"
    ];

    modules-center = [
      "hyprland/workspaces"
    ];

    modules-right = [
      "tray"
        "idle_inhibitor"
        "pulseaudio"
        "backlight"
        "battery"
        "clock"
    ];

    battery = {
      states = {
        warning = 30;
        critical = 15;
      };

      format = "{icon}&#8239;{capacity}";
      format-charging = "&#8239;{capacity}%";
      format-plugged = "&#8239;{capacity}%";
      format-alt = "{icon} {time}";
      format-icons = ["" "" "" "" "" "" ""];
    };

    "hyprland/workspaces" = {
      sort-by-name = true;
      on-click = "activate";
    };

    "hyprland/window" = {
      max-length = 200;
      separate-outpute = true;
    };

    "sway/mode" = {
      format = "<span style=\"italic\">{}</span>";
    };

    tray = {
      icon-size = 16;
      spaceing = 5;
    };

    clock = {
      locale = "C";
      format = " {:%I:%M %p}";
      format-alt = " {:%a,%b %d}";
    };

    cpu = {
      format = "&#8239;{usage}%";
      tooltip = false;
      on-click = "kitty -e 'htop'";
    };

    memory = {
      interval = 30;
      format = " {used:0.2f}GB";
      max-length = 10;
      tooltip = false;
      warning = 70;
      critical = 90;
    };

    network = {
      interval = 2;
      format-wifi = " {signalStrength}%";
      format-ethernet = "";
      format-linked = "{ipaddr}";
      format-disconnected = " Disconnected";
      tooltip = false;
      max-length = 20;
      min-length = 6;
      format-alt = "{essid}";
    };

    idle_inhibitor = {
      format = "{icon}";
      format-icons = {
        activated = "";
        deactivated = "";
      };
    };

    backlight = {
      format = "{icon}&#8239;{percent}%";
      format-icons = ["" ""];
      on-scroll-down = "brightnessctl -c backlight set 1%-";
      on-scroll-up = "";
    };

    pulseaudio = {
      format = "{icon} {volume}% {format_source}";
      format-bluetooth = "{icon} {volume}% {format_source}";
      format-bluetooth-muted = " {format_source}";
      format-muted = "  {format_source}";
      format-source = " {volume}%";
      format-source-muted = "";
      format-icons = {
        headphone = "";
        hands-free = "";
        headset = "🎧";
        phone = "";
        portable = "";
        car = "";
        default = ["" "" ""];
      };
      on-click = "pavucontrol";
    };
    mpd = {
      format = "{stateIcon} {artist} - {title}";
      format-disconnected = "🎶";
      format-stopped = "♪";
      interval = 10;
      consume-icons = {
        on = " ";
      };
      random-icons = {
        off = "<span color=\"#f53c3c\"></span> ";
        on = " ";
      };
      repeat-icons = {
        on = " ";
      };
      single-icons = {
        on = "1 ";
      };
      state-icons = {
        paused = "";
        playing = "";
      };
      tooltip-format = "MPD (connected)";
      tooltip-format-disconnected = "MPD (disconnected)";
      max-length = 35;
    };
    "custom/recorder" = {
      format = " Rec";
      format-disabled = " Off-air";
      return-type = "json";
      interval = 1;
      exec = "echo '{\"class\": \"recording\"}'";
      exec-if = "pgrep wf-recorder";
    };
    "custom/audiorec" = {
      format = "♬ Rec";
      format-disabled = "♬ Off-air";
      return-type = "json";
      interval = 1;
      exec = "echo '{\"class\": \"audio recording\"}'";
      exec-if = "pgrep ffmpeg";
    };

  };
  programs.waybar.settings.verticalBar = {
    position = "top";
    layer = "top";
    height = 30;
    width = 1000;
    margin-bottom = 0;
    margin-top = 20;
    reload-style-on-change = true;

    output = [
        "HDMI-A-2"
    ];

    modules-left = [
      "cpu"
        "memory"
        "network"
    ];

    modules-center = [
      "hyprland/workspaces"
    ];

    modules-right = [
      "tray"
        "idle_inhibitor"
        "pulseaudio"
        "backlight"
        "battery"
        "clock"
    ];

    battery = {
      states = {
        warning = 30;
        critical = 15;
      };

      format = "{icon}&#8239;{capacity}";
      format-charging = "&#8239;{capacity}%";
      format-plugged = "&#8239;{capacity}%";
      format-alt = "{icon} {time}";
      format-icons = ["" "" "" "" "" "" ""];
    };

    "hyprland/workspaces" = {
      sort-by-name = true;
      on-click = "activate";
    };

    "hyprland/window" = {
      max-length = 200;
      separate-outpute = true;
    };

    "sway/mode" = {
      format = "<span style=\"italic\">{}</span>";
    };

    tray = {
      icon-size = 16;
      spaceing = 5;
    };

    clock = {
      locale = "C";
      format = " {:%I:%M %p}";
      format-alt = " {:%a,%b %d}";
    };

    cpu = {
      format = "&#8239;{usage}%";
      tooltip = false;
      on-click = "kitty -e 'htop'";
    };

    memory = {
      interval = 30;
      format = " {used:0.2f}GB";
      max-length = 10;
      tooltip = false;
      warning = 70;
      critical = 90;
    };

    network = {
      interval = 2;
      format-wifi = " {signalStrength}%";
      format-ethernet = "";
      format-linked = "{ipaddr}";
      format-disconnected = " Disconnected";
      tooltip = false;
      max-length = 20;
      min-length = 6;
      format-alt = "{essid}";
    };

    idle_inhibitor = {
      format = "{icon}";
      format-icons = {
        activated = "";
        deactivated = "";
      };
    };

    backlight = {
      format = "{icon}&#8239;{percent}%";
      format-icons = ["" ""];
      on-scroll-down = "brightnessctl -c backlight set 1%-";
      on-scroll-up = "";
    };

    pulseaudio = {
      format = "{icon} {volume}% {format_source}";
      format-bluetooth = "{icon} {volume}% {format_source}";
      format-bluetooth-muted = " {format_source}";
      format-muted = "  {format_source}";
      format-source = " {volume}%";
      format-source-muted = "";
      format-icons = {
        headphone = "";
        hands-free = "";
        headset = "🎧";
        phone = "";
        portable = "";
        car = "";
        default = ["" "" ""];
      };
      on-click = "pavucontrol";
    };
    mpd = {
      format = "{stateIcon} {artist} - {title}";
      format-disconnected = "🎶";
      format-stopped = "♪";
      interval = 10;
      consume-icons = {
        on = " ";
      };
      random-icons = {
        off = "<span color=\"#f53c3c\"></span> ";
        on = " ";
      };
      repeat-icons = {
        on = " ";
      };
      single-icons = {
        on = "1 ";
      };
      state-icons = {
        paused = "";
        playing = "";
      };
      tooltip-format = "MPD (connected)";
      tooltip-format-disconnected = "MPD (disconnected)";
      max-length = 35;
    };
    "custom/recorder" = {
      format = " Rec";
      format-disabled = " Off-air";
      return-type = "json";
      interval = 1;
      exec = "echo '{\"class\": \"recording\"}'";
      exec-if = "pgrep wf-recorder";
    };
    "custom/audiorec" = {
      format = "♬ Rec";
      format-disabled = "♬ Off-air";
      return-type = "json";
      interval = 1;
      exec = "echo '{\"class\": \"audio recording\"}'";
      exec-if = "pgrep ffmpeg";
    };

  };
}
