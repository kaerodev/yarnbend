{ ... }:
{
  programs.waybar.style = ''
    *.{
        font-family: unscii;
        font-size: 14px;
        min-height: 0;
        color: #242424;
    }

    window#waybar {
        background-color: #F9F5DD;
        border-width: 5px;
        border: 4px #242424;
        border-style: double
    }

    *.left {
        font-family: unscii;
        font-size: 13px;
        min-height: 0;
        color: #242424;
    }

    window#waybar.left {
        background-color: #F9F5DD;
        border-width: 5px;
        border: 4px #242424;
        border-style: double
    }

    #workspaces {
        margin-top: 3px;
        margin-bottom: 2px;
        margin-right: 10px;
        margin-left: 25px;
    }

    #workspaces button {
        border-radius: 0px;
        margin-right: 10px;
        margin-top: 5px;
        margin-bottom: 5px;
        padding: 7px 7px;
        font-weight: bolder;
        background-color: transparent;
    }

    #workspaces button.active, #workspaces button.focused {
        padding: 0 0px;
        margin-top: 2px;
        margin-bottom: 2px;
        /*box-shadow: rgba(6, 24, 44, 0.4) 0px 0px 0px 2px, rgba(255, 255, 255, 0.65) 0px 4px 6px -1px, rgba(255, 255, 255, 0.08) 0px 1px 0px inset;    */
        background: #CFCFC2;
    }

    #tray,
    #mpd,
    #custom-weather,
    #cpu,
    #temperature,
    #memory,
    #sway-mode,
    #backlight,
    #pulseaudio,
    #custom-vpn,
    #disk,
    #custom-recorder,
    #custom-audiorec,
    #battery,
    #clock,
    #network {
        padding: 0 10px;
    }

  '';
}
