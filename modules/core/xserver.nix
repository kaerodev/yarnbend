{ ... }:
{
  services.xserver = {
    xkb.layout = "us";

    enable = true;
  };

  services.libinput = {
    enable = true;
    mouse.accelProfile = "flat";
  };

  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
