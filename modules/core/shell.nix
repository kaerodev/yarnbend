with import <nixpkgs> {};
{
  mainEnv = stdenv.mkDerivation {
    name = "main";
    buildInputs = [stdenv ncurses];
  };
}
