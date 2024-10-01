{ username, ... }:
{
  home.sessionPath = [
    "/home/${username}/.cargo/bin"
    "/home/${username}/.local/bin"
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "Nvim";
  };
}
