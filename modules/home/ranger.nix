{ ... }:
{
  programs.ranger = {
    enable = true;
    extraConfig = ''
      else = xdg-open "$1"
      label editor = "$EDITOR" -- "$@"
      label pager  = "$PAGER" -- "$@"
    '';
  };
}
