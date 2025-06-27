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

      "<leader>a" = "function() require'harpoon:list():add() end";
      "<C-e>" = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
      "<C-j>" = "function() require'harpoon:list():select(1) end";
      "<C-k>" = "function() require'harpoon:list():select(2) end";
      "<C-l>" = "function() require'harpoon:list():select(3) end";
      "<C-m>" = "function() require'harpoon:list():select(4) end";
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
