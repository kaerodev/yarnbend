{ ... }:
{
  home.shellAliases.h = "hx";

  programs.helix = {
    enable = true;
    defaultEditor = true;

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
