{ ... }:
{
  programs.helix = {
    enable = true;
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
