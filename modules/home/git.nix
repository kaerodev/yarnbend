{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "kaero";
    userEmail = "baphung1740@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
