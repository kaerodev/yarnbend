{ pkgs, ... }:
{
  programs.broot = {
    enable = true;
    package = pkgs.broot;
    enableZshIntegration = true;
    settings.modal = true;
  };
}
