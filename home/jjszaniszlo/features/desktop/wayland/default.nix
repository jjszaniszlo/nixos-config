{pkgs, ...}: {
  imports = [
    ./screenshot.nix
    ./xdg_portal.nix
    ./rofi.nix
  ];
  
  services.swayosd.enable = true;

  home.packages = with pkgs; [
    wl-clipboard
  ];

  home.sessionVariables = {
    QT_QPA_PLATFORM = "wayland";
    MOZ_ENABLE_WAYLAND = 1;
    GDK_BACKEND = "wayland";
  };
}
