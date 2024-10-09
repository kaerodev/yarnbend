{ ... }:
{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    enableTelescope = true;

    #keymapsSilent = true;
    keymaps = {
      addFile = "<leader>ha";
      toggleQuickMenu = "<C-e>";
      navFile = {
        "1" = "<C-h>";
        "2" = "<C-j>";
        "3" = "<C-k>";
        "4" = "<C-l>";
      };
    };
  };
}
