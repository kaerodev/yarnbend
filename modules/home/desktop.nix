{ ... }:
{
  xdg.desktopEntries = {
    nvim = {
      name = "Neovim";
      genericName = "Text Editor";
      exec = "nvopen %F";
      type = "Application";
      startupNotify = false;
    };
  };
}
