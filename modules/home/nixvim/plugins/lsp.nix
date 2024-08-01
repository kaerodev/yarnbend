{ ... }:
{
  programs.nixvim.plugins.lsp = {
    enable = true;

    keymaps.lspBuf = {
      gd = "definition";
      gD = "references";
      gt = "type_definition";
      gi = "implementation";
      K = "hover";
      "<F2>" = "rename";
    };

    servers = {
      clangd.enable = true;
      cmake.enable = true;
      gdscript.enable = true;
      rust-analyzer = {
        enable = true;
        installRustc = false;
        installCargo = false;
      };
    };
  };
}
