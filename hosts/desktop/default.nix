{ pkgs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core/desktop.default.nix
  ];

  powerManagement.cpuFreqGovernor = "performance";
}
