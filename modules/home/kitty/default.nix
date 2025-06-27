{  inputs, lib, config, username, ... }:
{
  programs.kitty = {
    enable = true;
    font = {
      name = "Iosevka";
      size = 13.0;
    };
    settings = {
      confirm_os_window_close = 0;
      background_opacity = "1.00";  
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
        background #403838
        foreground #fff1f3

        cursor #fff1f3
        cursor_text_color #000000
        selection_foreground #403838
        selection_background #fff1f3

        # dull black
        color0 #403838
        # light black
        color8 #72696a

        # dull red
        color1 #fd6883
        # light red
        color9 #fd6883

        # dull green
        color2 #adda78
        # light green
        color10 #adda78

        # yellow
        color3 #f9cc6c
        # light yellow
        color11 #f9cc6c

        # blue
        color4 #f38d70
        # light blue
        color12 #f38d70

        # magenta
        color5 #a8a9eb
        # light magenta
        color13 #a8a9eb

        # cyan
        color6 #85dacc
        # light cyan
        color14 #85dacc

        # dull white
        color7 #fff1f3
        # bright white
        color15 #fff1f3
    '';
  };
}
