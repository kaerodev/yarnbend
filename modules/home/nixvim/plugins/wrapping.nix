{ ... }:
{
  programs.nixvim.plugins.wrapping = {
    enable = true;

    settings = {
      auto_set_mode_filetype_allowlist = [
        "latex"
        "text"
        "mail"
        "markdown"
      ];
    };
  };
}
