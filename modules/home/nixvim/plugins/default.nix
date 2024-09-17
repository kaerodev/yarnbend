{ ... }:
{
  # make separate file for plugins that need more configuration
  imports = 
    [ (import ./lsp.nix) ]
  ++[ (import ./telescope.nix) ];

  programs.nixvim.plugins = {
    airline.enable = true;
    nvim-autopairs.enable = true;
    godot.enable = true;
  };
}
