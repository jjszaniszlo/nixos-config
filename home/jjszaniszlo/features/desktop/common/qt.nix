{pkgs, ...}: {
  qt = {
    enable = true;
    platformTheme = "gtk";
    style = {
      name = "Kanagawa";
      package = pkgs.kanagawa-gtk-theme;
    };
  };
}
