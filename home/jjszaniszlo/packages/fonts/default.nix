{pkgs, ...}: {
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Victor-Mono" ]; })
  ];
}
