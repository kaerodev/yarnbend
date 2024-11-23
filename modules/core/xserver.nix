{ ... }:
{
  services.xserver = {
    xkb.layout = "us";

    enable = true;

    libinput = {
        enable = true;
        mouse.accelProfile = "flat";
    };
  };

  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
