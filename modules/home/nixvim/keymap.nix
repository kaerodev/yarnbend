{ lib, config, ... }:
{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = let
      normal = 
      lib.mapAttrsToList
      (key: action: {
       mode = "n";
       inherit action key;
       })
    {
      "<Space>" = "<NOP>";

      # esc clears search results
      "<esc>" = ":noh<CR>";

      # resize with arrows
      "<C-Up>" = ":resize -2<CR>";
      "<C-Down>" = ":resize +2<CR>";
      "<C-Left>" = ":vertical resize +2<CR>";
      "<C-Right>" = ":vertical resize -2<CR>";
    };
    visual =
      lib.mapAttrsToList
      (key: action: {
       mode = "v";
       inherit action key;
       })
    {
      # move selected line / block of text in visual mode
      "K" = ":m '<-2<CR>gv=gv";
      "J" = ":m '>+1<CR>gv=gv";
    };
    in
      config.lib.nixvim.keymaps.mkKeymaps
      {options.silent = true;}
      (normal ++ visual);


  };
}
