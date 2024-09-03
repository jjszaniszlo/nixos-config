{pkgs, ...}: {
  services.displayManager.sddm = {
    enable = true;
    theme = "${pkgs.sonoma-sddm-theme}"; 
  };

  environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtgraphicaleffects
  ];
}
