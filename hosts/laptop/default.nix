{ pkgs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  boot.initrd.luks.devices."luks-baa8a413-f624-4db2-91e1-bbbe26f8ba9a".device = "/dev/disk/by-uuid/baa8a413-f624-4db2-91e1-bbbe26f8ba9a";

  environment.systemPackages = with pkgs; [
    acpi
    brightnessctl
    cpupower-gui
    powertop
  ];

}
