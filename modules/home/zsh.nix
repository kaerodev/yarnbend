{ username, config, lib, pkgs, ... }:
{
  programs.zsh = {
    sessionVariables = {
        EDITOR = "no";
    };

    enable = true;
    dotDir = ".config/zsh";
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "fzf"
      ];
    };

    shellAliases = {
      icat = "kitten icat";
      cat = "bat";

      ns = "nix-shell --run zsh ~/.dotfiles/modules/core/shell.nix";

      ls = "eza --icons -a --group-directories-first -G ";
      lt = "eza --icons -a --group-directories-first -G --tree";

      startui = "dbus-run-session Hyprland";
    };

    initExtra = ''
        export EDITOR=no
    '';
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
