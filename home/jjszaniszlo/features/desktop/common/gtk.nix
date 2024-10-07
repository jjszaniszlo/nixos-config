{pkgs, ...}: {
  gtk = {
    enable = true;
    
    cursorTheme = {
      name = "macOS";
      package = pkgs.apple-cursor;
    };

    theme = {
      name = "Kanagawa-B";
      package = pkgs.kanagawa-gtk-theme;
    };

    iconTheme = {
      name = "Kanagawa";
      package = pkgs.kanagawa-icon-theme;
    };
  };
}
