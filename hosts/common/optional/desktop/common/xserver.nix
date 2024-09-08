{
  services = {
    xserver.enable = true;
    logind.lidSwitch = "hibernate";
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
