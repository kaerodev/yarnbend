{ username, ... }:
{
  home.sessionPath = [
    "/home/${username}/.cargo/bin"
  ];
}
