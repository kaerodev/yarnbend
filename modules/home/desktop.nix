{ ... }:
{
  xdg.desktopEntries = {
    nvim = {
      name = "Nvim";
      genericName = "Text Editor";
      exec = "nvopen %F";
      type = "Application";
      startupNotify = false;
      mimeType = [ "text/markdown" "text/plain" ];
    };
  };
}
