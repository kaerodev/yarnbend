{ pkgs, ... }:
{
  programs.broot = {
    enable = true;
    enableZshIntegration = true;
    settings.modal = true;

    settings.verbs = [
        { 
            invocation = "nvim"; 
            key = "alt-o"; 
            execution = "Nvim {file}";
            from_shell = true;
            leave_broot = false;
        }
    ];
  };
}
