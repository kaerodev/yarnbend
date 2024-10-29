{ ... }:
{
  programs.lf = {
    enable = true;

    extraConfig = ''
      set hidden!
      set relativenumber
      map o &kitty .
      map ~ &kitty fletcher .
      map O &kitty nvim .
      map X &trash $f
      map n &nvopen $f
    '';
  };
}
