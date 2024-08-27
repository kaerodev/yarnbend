{ config, pkgs, inputs, ... }:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./keymap.nix
    ./options.nix
    ./plugins
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = false;

    performance.combinePlugins = {
      enable = true;
      standalonePlugins = [
        "hmts.nvim"# syntax highlighting for langauges in the form of pure strings in nix configs
        "bashnvim-treesitter"
      ];
    };

    colorschemes.gruvbox.enable = true;
  };
}
