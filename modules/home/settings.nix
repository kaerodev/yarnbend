{ username, lib, config, ... }:
{
  home.sessionPath = [
    "/home/${username}/.cargo/bin"
    "/home/${username}/.local/bin"
  ];

/*
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "Nvim";
  };
*/

  home.activation = {
    # https://github.com/philj56/tofi/issues/115#issuecomment-1701748297
    regenerateTofiCache = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      tofi_cache=${config.xdg.cacheHome}/tofi-drun
      [[ -f "$tofi_cache" ]] && rm "$tofi_cache"
      '';
  };
}
