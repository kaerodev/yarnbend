{ ... }:
{
  programs.tofi = {
    enable = true;
    settings = {
      terminal = true;

      background-color = "#F9F5DDFF";
      background = "#F9F5DDFF";
      prompt-background = "#F9F5DDFF";
      input-color = "000000";
      input-background = "#F9F5DDFF";
      selection-background = "#FFFFFFFFF";
      selection-color = "#8e610aff";
      font = "/nix/store/w93i06gp3xpvfi30ininxj72nk9mrlna-home-manager-path/share/fonts/opentype/unscii-8-thin.otf";
      font-size = 15;
      hint-font = true;
      border-width = 2;
      outline-width = 2;
      outline-color = "#333333";
      border-color = "#F9F5DDFF";
      text-color = "#575279";


      prompt-text = "drun: ";
    };
  };
}
