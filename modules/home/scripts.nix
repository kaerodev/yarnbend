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

    (pkgs.writeShellScriptBin "Nvim" ''
     kitty $1 nvim
    '')

    (pkgs.writeShellScriptBin "nvopen" ''
     kitty -d $1 nvim
    '')

    (pkgs.writeShellScriptBin "lf-open" ''
      kitty -d $1 lf
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

    (pkgs.writeShellScriptBin "bemenufromfile" ''
      # extra stuff is to detect if the user pressed esc and didn't mean to execute the command
      input=$(grep -v '^#' $1 | bemenu --fixed-height --no-exec --fn="OpenDyslexicNerdFont-Regular 11")
      if [$input -q ""]; then
        echo exiting
        exit 1
      else
        echo $input
      fi
    '')

    # probably could/should combine shared functionality in the two bookmark commands into one command
    (pkgs.writeShellScriptBin "bookmarks" ''
      input=$(bemenufromfile ~/org/BOOKMARKS) && lf-open $input
    '')

    (pkgs.writeShellScriptBin "bookmarksnvim" ''
      input=$(bemenufromfile ~/org/BOOKMARKS) && nvopen $input
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
