{pkgs, config, ...}: {
  home.packages = with pkgs; [
    vivaldi
  ];

  xdg.mimeApps.defaultApplications = {
    "text/html" = ["vivaldi.desktop"];
    "text/xml" = ["vivaldi.desktop"];
    "x-scheme-handler/http" = ["vivaldi.desktop"];
    "x-scheme-handler/https" = ["vivaldi.desktop"];
  };

  home.persistence = {
    "/persist/${config.home.homeDirectory}" = {
      directories = [
        ".config/vivaldi"
      ];
    };
  };
}
