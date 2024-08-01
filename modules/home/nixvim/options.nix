{ ... }:
{
  programs.nixvim = {
    opts = {

      relativenumber = true;
      number = true;
      cursorline = true;

      foldlevel = 90;
	
	    # search changes
      hlsearch = true;
      showmatch = true;
      incsearch = true;
      showmode = true;
      ignorecase = true;
      smartcase = true;


      # tabs insert 2 spaces
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;

    };
  };
}
