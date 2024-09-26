{ ... }:
{
  home.shellAliases.h = "hx";

  programs.helix = {
    enable = false;
    defaultEditor = false;

    settings = {
      theme = "base16_terminal";
      editor = {
        soft-wrap.enable = true;
        line-number = "relative";
        lsp.display-messages = true;
      };
    };
  };
}
