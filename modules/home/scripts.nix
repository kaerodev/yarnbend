{ pkgs, host, username, ... }:
{
  home.packages = [

    (pkgs.writeShellScriptBin "checkbat" ''
      cat /sys/class/power_supply/BAT0/capacity
     '')

    (pkgs.writeShellScriptBin "switch-config" ''
      sudo nixos-rebuild switch --flake /home/${username}/.dotfiles#${host}
     '')

    (pkgs.writeShellScriptBin "upgrade-switch" ''
      sudo nixos-rebuild switch --upgrade --flake /home/${username}/.dotfiles#${host}
     '')

    (pkgs.writeShellScriptBin "update-flake" ''
     sudo nix flake update ~/.dotfiles#
     '')

    (pkgs.writeShellScriptBin "nix-clean" ''
      nix-collect-garbage --delete-older-than 15d
     '')

    (pkgs.writeShellScriptBin "nvopen" ''
     kitty nvim $1
    '')

    (pkgs.writeShellScriptBin "Nvim" ''
     kitty nvim $1
    '')

    (pkgs.writeShellScriptBin "lf-open" ''
      kitty lf $1
    '')

    (pkgs.writeShellScriptBin "dotfiles-open" ''
      lf-open ~/.dotfiles
    '')

    (pkgs.writeShellScriptBin "info-open" ''
      lf-open ~/org/Information
    '')

    (pkgs.writeShellScriptBin "life-open" ''
      lf-open ~/org/Life
    '')

    (pkgs.writeShellScriptBin "dev-open" ''
      lf-open "$HOME/dev/"
    '')

    (pkgs.writeShellScriptBin "bookmarks" ''
      lf-open $(grep -v '^#' ~/org/BOOKMARKS| bemenu --fixed-height --no-exec --fn="OpenDyslexicNerdFont-Regular 11")
    '')

    (pkgs.writeShellScriptBin "bookmarksnvim" ''
      nvopen $(grep -v '^#' ~/org/BOOKMARKS| bemenu --fixed-height --no-exec)
    '')

    (pkgs.writeShellScriptBin "addmark" ''
      bookmark=$1
      file="$HOME/org/BOOKMARKS"

      if grep -q "^$bookmark$" "$file"; then
        notify-send "Error" "Bookmark already present."
      else
        notify-send "Bookmark Added" "$bookmark"
        echo "$bookmark" >> "$file"
      fi
    '')
  ];
}
