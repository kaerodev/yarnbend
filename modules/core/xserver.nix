{ ... }:
{
  services.xserver = {
    xkb.layout = "us";
  };

  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
