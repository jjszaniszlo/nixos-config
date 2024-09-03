{pkgs, ...}: {
  imports = [
    ./screenshot.nix
    ./xdg_portal.nix
  ];
  
  services.swayosd.enable = true;

  xdg.mimeApps.enable = true;
  home.packages = with pkgs; [
    wl-clipboard
  ];

  home.sessionVariables = {
    QT_QPA_PLATFORM = "wayland";
    MOZ_ENABLE_WAYLAND = 1;
    GDK_BACKEND = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";
  };
}
