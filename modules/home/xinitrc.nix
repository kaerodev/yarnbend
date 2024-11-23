{ ... }:
{
  home.file.".xinitrc".text = ''
    #!/bin/sh
    exec qtile start
  '';
}
