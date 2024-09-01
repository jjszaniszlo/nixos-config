{
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;

  services.logind.lidSwitch = "hibernate";
}
