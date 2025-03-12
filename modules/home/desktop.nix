{ ... }:
{
  xdg.desktopEntries = {
    neovim-open = {
      name = "nvopen";
      genericName = "Text Editor";
      exec = "no %F";
      type = "Application";
      startupNotify = false;
      mimeType = [ "text/markdown" "text/plain" "text/x-tex" ];
    };
  };
}
