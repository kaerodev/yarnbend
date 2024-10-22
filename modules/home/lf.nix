{ ... }:
{
  programs.lf = {
    enable = true;

    extraConfig = ''
      set hidden!
      map o &kitty .
      map ~ &kitty fletcher .
      map O &kitty nvim .
      map X &trash $f
      map n &Nvim $f
    '';
  };
}
