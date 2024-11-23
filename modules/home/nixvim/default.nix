{ pkgs, inputs, ... }:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./autocomplete.nix
    ./keymap.nix
    ./options.nix
    ./plugins
  ];

  home.shellAliases.v = "nvim";

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    performance.combinePlugins = {
      enable = true;
      standalonePlugins = [
        "hmts.nvim"# syntax highlighting for langauges in the form of pure strings in nix configs
        "bashnvim-treesitter"
      ];
    };

    colorschemes.base16.colorscheme = {
      base00 = "#403838";
      base01 = "#403838";
      base02 = "#72696a";
      base03 = "#72696a";
      base04 = "#565c64";
      base05 = "#fff1f3";
      base06 = "#fff1f3";
      base07 = "#fff1f3";
      base08 = "#fd6883";
      base09 = "#f38d70";
      base0A = "#f9cc6c";
      base0B = "#adda78";
      base0C = "#85dacc";
      base0D = "#a8a9eb";
      base0E = "#cba6f7";
      base0F = "#f38d70";
    };

    colorschemes.base16.enable = true;
  };
}
