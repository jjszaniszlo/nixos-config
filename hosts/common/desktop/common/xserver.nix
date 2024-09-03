{pkgs, ...}: {
  services = {
    xserver.enable = true;
    displayManager.sddm = {
      enable = true;
      theme = pkgs.sonoma-sddm-theme; 
    };
    logind.lidSwitch = "hibernate";
  };
}
