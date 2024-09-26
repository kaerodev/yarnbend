{ username, ... }:
{
  home.sessionPath = [
    "/home/${username}/.cargo/bin"
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "Nvim";
  };
}
