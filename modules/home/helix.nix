{ ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "base16_terminal";
      editor = {
        line-number = "relative";
        lsp.display-messages = true;
      };
    };
  };
}
