{  inputs, lib, config, username, ... }:
{
  programs.kitty = {
    enable = true;
    font = {
      name = "fira-code";
      size = 10.5;
    };
    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.70";  
      window_padding_width = 10;
      scrollback_lines = 10000;
      enable_audio_bell = false;
      mouse_hide_wait = 60;

      ## Tabs
      tab_title_template = "{index}";
      active_tab_font_style = "normal";
      inactive_tab_font_style = "normal";
      tab_bar_style = "powerline";
      tab_powerline_style = "round";
      active_tab_foreground = "#1e1e2e";
      active_tab_background = "#cba6f7";
      inactive_tab_foreground = "#bac2de";
      inactive_tab_background = "#313244";
    };

    extraConfig = ''
      # cyberdream theme for kitty
      background            #16181a
      foreground            #ffffff
      cursor                #ffffff
      cursor_text_color     #16181a
      selection_background  #3c4048
      color0                #16181a
      color8                #3c4048
      color1                #ff6e5e
      color9                #ff6e5e
      color2                #5eff6c
      color10               #5eff6c
      color3                #f1ff5e
      color11               #f1ff5e
      color4                #5ea1ff
      color12               #5ea1ff
      color5                #bd5eff
      color13               #bd5eff
      color6                #5ef1ff
      color14               #5ef1ff
      color7                #ffffff
      color15               #ffffff
      selection_foreground  #ffffff
    '';
  };
}
