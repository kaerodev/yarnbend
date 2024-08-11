{ ... }:
{
  imports = 
    [ (import ./lsp.nix) ];

  programs.nixvim.plugins = {
    airline.enable = true;
    nvim-autopairs.enable = true;
  };
}
