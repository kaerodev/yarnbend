{ ... }:
{
  programs.nixvim.plugins.lsp = {
    enable = true;

    keymaps.lspBuf = {
      gd = "definition";
      gr = "references";
      gt = "type_definition";
      gi = "implementation";
      K = "hover";
      "<F2>" = "rename";
    };


    servers = {
      clangd.enable = true;
      zls.enable = true;
      hls.enable = true;
      cmake.enable = true;
      gdscript = {
        enable = true;
        package = null;
      };
      rust-analyzer = {
        enable = true;
        installRustc = false;
        installCargo = false;
      };
      pyright.enable = true;
      marksman.enable = true;
      texlab.enable = true;
      html.enable = true;
      nixd.enable =true;
      glsl_analyzer = {
        enable = true;
        filetypes = [ "vert" "frag" ];
      };
      prolog_ls = {
        enable = true;
        package = null;
      };
    };
  };
}
