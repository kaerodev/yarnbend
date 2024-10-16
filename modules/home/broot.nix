{ pkgs, ... }:
{
  programs.broot = {
    enable = false;
    package = pkgs.broot;
    enableZshIntegration = true;
    settings.modal = true;
  };
}
