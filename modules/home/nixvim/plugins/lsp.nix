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
    };
  };
}
